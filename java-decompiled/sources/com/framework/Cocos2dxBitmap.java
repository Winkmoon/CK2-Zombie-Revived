package com.framework;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public class Cocos2dxBitmap {
    private static final int ALIGNCENTER = 51;
    private static final int ALIGNLEFT = 49;
    private static final int ALIGNRIGHT = 50;
    static final int FONT_CHARACTER_SIZE = 256;
    static final int FONT_SIZE_HEIGHT = 16;
    static final int FONT_SIZE_WIDTH = 16;
    private static android.content.Context context;

    private static native void nativeBitmapDC(android.graphics.Bitmap bitmap);

    private static native void nativeBitmapFontDC(android.graphics.Bitmap bitmap, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4);

    public static void setContext(android.content.Context context2) {
        context = context2;
    }

    public static int getFontWidth(java.lang.String fontName, int fontSize, java.lang.String msg) {
        android.graphics.Paint paint = newPaint(fontName, fontSize, ALIGNLEFT);
        return (int) java.lang.Math.ceil(paint.measureText(msg));
    }

    public static void createTextBitmap(java.lang.String content, java.lang.String fontName, int fontSize, int alignment, int width, int height) {
        java.lang.String content2 = refactorString(content);
        android.graphics.Paint paint = newPaint(fontName, fontSize, alignment);
        com.framework.Cocos2dxBitmap.TextProperty textProperty = computeTextProperty(content2, paint, width, height);
        int bitmapTotalHeight = height == 0 ? textProperty.totalHeight : height;
        android.graphics.Bitmap bitmap = android.graphics.Bitmap.createBitmap(textProperty.maxWidth, bitmapTotalHeight, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmap);
        android.graphics.Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        int y = height == 0 ? -fm.top : (-fm.top) + ((height - textProperty.totalHeight) / 2);
        java.lang.String[] lines = textProperty.lines;
        for (java.lang.String line : lines) {
            int x = computeX(paint, line, textProperty.maxWidth, alignment);
            canvas.drawText(line, x, y, paint);
            y += textProperty.heightPerLine;
        }
        nativeBitmapDC(bitmap);
    }

    public static void createBitmapFont(java.lang.String fontName, int fontSize) {
        android.graphics.Paint paint = newPaint(fontName, fontSize, ALIGNLEFT);
        int[] fsizex = new int[256];
        int[] fsizey = new int[256];
        int[] fposx = new int[256];
        int[] fposy = new int[256];
        int fw = -1;
        int fh = -1;
        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        int i = 0;
        while (i < 256) {
            sb.append(i < 32 ? '*' : (char) i);
            i++;
        }
        java.lang.String str = sb.toString();
        char[] ch = str.toCharArray();
        android.graphics.Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        fsizey[0] = (int) java.lang.Math.ceil(fm.bottom - fm.top);
        for (int x = 0; x < 16; x++) {
            for (int y = 0; y < 16; y++) {
                int c = x + (y * 16);
                fsizex[c] = (int) java.lang.Math.ceil(paint.measureText(ch, c, 1));
                fsizey[c] = fsizey[0];
                if (fsizex[c] > fw) {
                    fw = fsizex[c];
                }
                if (fsizey[c] > fh) {
                    fh = fsizey[c];
                }
            }
        }
        for (int x2 = 0; x2 < 16; x2++) {
            for (int y2 = 0; y2 < 16; y2++) {
                int c2 = x2 + (y2 * 16);
                fposx[c2] = fw * x2;
                fposy[c2] = fh * y2;
            }
        }
        int wid = fw * 16;
        int hei = fh * 16;
        android.graphics.Bitmap bitmap = android.graphics.Bitmap.createBitmap(wid, hei, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmap);
        for (int x3 = 0; x3 < 16; x3++) {
            for (int y3 = 0; y3 < 16; y3++) {
                int c3 = x3 + (y3 * 16);
                if (c3 >= 32 && c3 <= 127) {
                    canvas.drawText(ch, c3, 1, fposx[c3], fposy[c3] - fm.top, paint);
                }
            }
        }
        nativeBitmapFontDC(bitmap, fposx, fposy, fsizex, fsizey);
    }

    public static void createBitmapDFont(java.lang.String fontName, int fontSize, java.lang.String str, int tw) {
        android.graphics.Paint paint = newPaint(fontName, fontSize, ALIGNLEFT);
        int hei = 0;
        int w = 0;
        char[] ch = str.toCharArray();
        android.graphics.Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        int h = (int) java.lang.Math.ceil(fm.bottom - fm.top);
        for (int i = 0; i < ch.length; i++) {
            int ts = (int) java.lang.Math.ceil(paint.measureText(ch, i, 1));
            if (ch[i] == '|') {
                w = 0;
                hei += h;
            } else {
                if (w + ts > tw) {
                    w = 0;
                    hei += h;
                }
                w += ts;
            }
        }
        android.graphics.Bitmap bitmap = android.graphics.Bitmap.createBitmap(tw, hei + h, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmap);
        int w2 = 0;
        int hei2 = 0;
        for (int i2 = 0; i2 < ch.length; i2++) {
            int ts2 = (int) java.lang.Math.ceil(paint.measureText(ch, i2, 1));
            if (ch[i2] == '|') {
                w2 = 0;
                hei2 += h;
            } else {
                if (w2 + ts2 > tw) {
                    w2 = 0;
                    hei2 += h;
                }
                canvas.drawText(ch, i2, 1, w2, hei2 - fm.top, paint);
                w2 += ts2;
            }
        }
        nativeBitmapDC(bitmap);
    }

    private static int computeX(android.graphics.Paint paint, java.lang.String content, int w, int alignment) {
        switch (alignment) {
            case ALIGNLEFT /* 49 */:
            default:
                return 0;
            case ALIGNRIGHT /* 50 */:
                return w;
            case ALIGNCENTER /* 51 */:
                int ret = w / 2;
                return ret;
        }
    }

    private static class TextProperty {
        int heightPerLine;
        java.lang.String[] lines;
        int maxWidth;
        int totalHeight;

        TextProperty(int w, int h, java.lang.String[] lines) {
            this.maxWidth = w;
            this.heightPerLine = h;
            this.totalHeight = lines.length * h;
            this.lines = lines;
        }
    }

    private static com.framework.Cocos2dxBitmap.TextProperty computeTextProperty(java.lang.String content, android.graphics.Paint paint, int maxWidth, int maxHeight) {
        android.graphics.Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        int h = (int) java.lang.Math.ceil(fm.bottom - fm.top);
        int maxContentWidth = 0;
        java.lang.String[] lines = splitString(content, maxHeight, maxWidth, paint);
        if (maxWidth != 0) {
            maxContentWidth = maxWidth;
        } else {
            for (java.lang.String line : lines) {
                int temp = (int) java.lang.Math.ceil(paint.measureText(line, 0, line.length()));
                if (temp > maxContentWidth) {
                    maxContentWidth = temp;
                }
            }
        }
        return new com.framework.Cocos2dxBitmap.TextProperty(maxContentWidth, h, lines);
    }

    private static java.lang.String[] splitString(java.lang.String content, int maxHeight, int maxWidth, android.graphics.Paint paint) {
        java.lang.String[] lines = content.split("\\n");
        android.graphics.Paint.FontMetricsInt fm = paint.getFontMetricsInt();
        int heightPerLine = (int) java.lang.Math.ceil(fm.bottom - fm.top);
        int maxLines = maxHeight / heightPerLine;
        if (maxWidth != 0) {
            java.util.LinkedList<java.lang.String> strList = new java.util.LinkedList<>();
            for (java.lang.String line : lines) {
                int lineWidth = (int) java.lang.Math.ceil(paint.measureText(line));
                if (lineWidth > maxWidth) {
                    strList.addAll(divideStringWithMaxWidth(paint, line, maxWidth));
                } else {
                    strList.add(line);
                }
                if (maxLines > 0 && strList.size() >= maxLines) {
                    break;
                }
            }
            if (maxLines > 0 && strList.size() > maxLines) {
                while (strList.size() > maxLines) {
                    strList.removeLast();
                }
            }
            java.lang.String[] ret = new java.lang.String[strList.size()];
            strList.toArray(ret);
            return ret;
        }
        if (maxHeight != 0 && lines.length > maxLines) {
            java.util.LinkedList<java.lang.String> strList2 = new java.util.LinkedList<>();
            for (int i = 0; i < maxLines; i++) {
                strList2.add(lines[i]);
            }
            java.lang.String[] ret2 = new java.lang.String[strList2.size()];
            strList2.toArray(ret2);
            return ret2;
        }
        return lines;
    }

    private static java.util.LinkedList<java.lang.String> divideStringWithMaxWidth(android.graphics.Paint paint, java.lang.String content, int width) {
        int charLength = content.length();
        int start = 0;
        java.util.LinkedList<java.lang.String> strList = new java.util.LinkedList<>();
        int i = 1;
        while (i <= charLength) {
            int tempWidth = (int) java.lang.Math.ceil(paint.measureText(content, start, i));
            if (tempWidth >= width) {
                int lastIndexOfSpace = content.substring(0, i).lastIndexOf(" ");
                if (lastIndexOfSpace != -1 && lastIndexOfSpace > start) {
                    strList.add(content.substring(start, lastIndexOfSpace));
                    i = lastIndexOfSpace;
                } else if (i > 1 && tempWidth > width) {
                    strList.add(content.substring(start, i - 1));
                    i--;
                } else {
                    strList.add(content.substring(start, i));
                }
                start = i;
            }
            i++;
        }
        if (start < charLength) {
            strList.add(content.substring(start));
        }
        return strList;
    }

    private static android.graphics.Paint newPaint(java.lang.String fontName, int fontSize, int alignment) {
        android.graphics.Paint paint = new android.graphics.Paint();
        paint.setColor(-1);
        paint.setTextSize(fontSize);
        paint.setAntiAlias(true);
        if (fontName.endsWith(".ttf")) {
            try {
                android.graphics.Typeface typeFace = com.framework.Cocos2dxTypefaces.get(context, fontName);
                paint.setTypeface(typeFace);
            } catch (java.lang.Exception e) {
                android.util.Log.e("Cocos2dxBitmap", "error to create ttf type face: " + fontName);
                paint.setTypeface(android.graphics.Typeface.create(fontName, 0));
            }
        } else {
            paint.setTypeface(android.graphics.Typeface.create(fontName, 0));
        }
        switch (alignment) {
            case ALIGNLEFT /* 49 */:
                paint.setTextAlign(android.graphics.Paint.Align.LEFT);
                return paint;
            case ALIGNRIGHT /* 50 */:
                paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
                return paint;
            case ALIGNCENTER /* 51 */:
                paint.setTextAlign(android.graphics.Paint.Align.CENTER);
                return paint;
            default:
                paint.setTextAlign(android.graphics.Paint.Align.LEFT);
                return paint;
        }
    }

    private static java.lang.String refactorString(java.lang.String str) {
        if (str.compareTo("") == 0) {
            return " ";
        }
        java.lang.StringBuilder strBuilder = new java.lang.StringBuilder(str);
        int start = 0;
        for (int index = strBuilder.indexOf("\n"); index != -1; index = strBuilder.indexOf("\n", start)) {
            if (index == 0 || strBuilder.charAt(index - 1) == '\n') {
                strBuilder.insert(start, " ");
                start = index + 2;
            } else {
                start = index + 1;
            }
            if (start > strBuilder.length() || index == strBuilder.length()) {
                break;
            }
        }
        return strBuilder.toString();
    }
}
