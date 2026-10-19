.class public Lcom/framework/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/framework/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final ALIGNCENTER:I = 0x33

.field private static final ALIGNLEFT:I = 0x31

.field private static final ALIGNRIGHT:I = 0x32

.field static final FONT_CHARACTER_SIZE:I = 0x100

.field static final FONT_SIZE_HEIGHT:I = 0x10

.field static final FONT_SIZE_WIDTH:I = 0x10

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;Landroid/graphics/Paint;II)Lcom/framework/Cocos2dxBitmap$TextProperty;
    .registers 16
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 237
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v8

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 238
    .local v1, "h":I
    const/4 v4, 0x0

    .line 240
    .local v4, "maxContentWidth":I
    invoke-static {p0, p3, p2, p1}, Lcom/framework/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "lines":[Ljava/lang/String;
    if-eqz p2, :cond_1e

    .line 243
    move v4, p2

    .line 258
    :cond_18
    new-instance v6, Lcom/framework/Cocos2dxBitmap$TextProperty;

    invoke-direct {v6, v4, v1, v3}, Lcom/framework/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v6

    .line 249
    :cond_1e
    const/4 v5, 0x0

    .line 250
    .local v5, "temp":I
    array-length v8, v3

    move v6, v7

    :goto_21
    if-ge v6, v8, :cond_18

    aget-object v2, v3, v6

    .line 251
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v2, v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 252
    if-le v5, v4, :cond_36

    .line 253
    move v4, v5

    .line 250
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_21
.end method

.method private static computeX(Landroid/graphics/Paint;Ljava/lang/String;II)I
    .registers 5
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "alignment"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "ret":I
    packed-switch p3, :pswitch_data_a

    .line 216
    :goto_4
    :pswitch_4
    return v0

    .line 197
    :pswitch_5
    div-int/lit8 v0, p2, 0x2

    .line 198
    goto :goto_4

    .line 205
    :pswitch_8
    move v0, p2

    .line 206
    goto :goto_4

    .line 195
    :pswitch_data_a
    .packed-switch 0x31
        :pswitch_4
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static createBitmapDFont(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 20
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "tw"    # I

    .prologue
    .line 148
    const/16 v5, 0x31

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/framework/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v8

    .line 150
    .local v8, "paint":Landroid/graphics/Paint;
    move/from16 v15, p3

    .local v15, "wid":I
    const/4 v12, 0x0

    .local v12, "hei":I
    const/4 v14, 0x0

    .local v14, "w":I
    const/4 v11, 0x0

    .line 152
    .local v11, "h":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 154
    .local v3, "ch":[C
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 155
    .local v10, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v5, v10, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v11, v6

    .line 156
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, v3

    if-lt v4, v5, :cond_3c

    .line 169
    add-int/2addr v12, v11

    .line 171
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v12, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 172
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    move v12, v14

    .line 174
    const/4 v4, 0x0

    :goto_35
    array-length v5, v3

    if-lt v4, v5, :cond_5c

    .line 189
    invoke-static {v9}, Lcom/framework/Cocos2dxBitmap;->nativeBitmapDC(Landroid/graphics/Bitmap;)V

    .line 190
    return-void

    .line 157
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3c
    const/4 v5, 0x1

    invoke-virtual {v8, v3, v4, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v13, v6

    .line 158
    .local v13, "ts":I
    aget-char v5, v3, v4

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_52

    .line 159
    const/4 v14, 0x0

    .line 160
    add-int/2addr v12, v11

    .line 156
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 162
    :cond_52
    add-int v5, v14, v13

    move/from16 v0, p3

    if-le v5, v0, :cond_5a

    .line 163
    const/4 v14, 0x0

    .line 164
    add-int/2addr v12, v11

    .line 166
    :cond_5a
    add-int/2addr v14, v13

    goto :goto_4f

    .line 175
    .end local v13    # "ts":I
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5c
    const/4 v5, 0x1

    invoke-virtual {v8, v3, v4, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v13, v6

    .line 176
    .restart local v13    # "ts":I
    aget-char v5, v3, v4

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_72

    .line 177
    const/4 v14, 0x0

    .line 178
    add-int/2addr v12, v11

    .line 174
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 180
    :cond_72
    add-int v5, v14, v13

    move/from16 v0, p3

    if-le v5, v0, :cond_7a

    .line 181
    const/4 v14, 0x0

    .line 182
    add-int/2addr v12, v11

    .line 184
    :cond_7a
    const/4 v5, 0x1

    int-to-float v6, v14

    iget v7, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v7, v12, v7

    int-to-float v7, v7

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 185
    add-int/2addr v14, v13

    goto :goto_6f
.end method

.method public static createBitmapFont(Ljava/lang/String;I)V
    .registers 27
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I

    .prologue
    .line 94
    const/16 v5, 0x31

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/framework/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v8

    .line 96
    .local v8, "paint":Landroid/graphics/Paint;
    const/16 v5, 0x100

    new-array v14, v5, [I

    .line 97
    .local v14, "fsizex":[I
    const/16 v5, 0x100

    new-array v15, v5, [I

    .line 98
    .local v15, "fsizey":[I
    const/16 v5, 0x100

    new-array v12, v5, [I

    .line 99
    .local v12, "fposx":[I
    const/16 v5, 0x100

    new-array v13, v5, [I

    .line 100
    .local v13, "fposy":[I
    const/16 v16, -0x1

    .local v16, "fw":I
    const/4 v10, -0x1

    .line 101
    .local v10, "fh":I
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v19, "sb":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_24
    const/16 v5, 0x100

    move/from16 v0, v18

    if-lt v0, v5, :cond_73

    .line 105
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 106
    .local v20, "str":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 108
    .local v3, "ch":[C
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    .line 109
    .local v11, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v5, 0x0

    iget v6, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v15, v5

    .line 110
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_46
    const/16 v5, 0x10

    move/from16 v0, v22

    if-lt v0, v5, :cond_87

    .line 123
    const/16 v22, 0x0

    :goto_4e
    const/16 v5, 0x10

    move/from16 v0, v22

    if-lt v0, v5, :cond_b9

    .line 131
    mul-int/lit8 v21, v16, 0x10

    .line 132
    .local v21, "wid":I
    mul-int/lit8 v17, v10, 0x10

    .line 133
    .local v17, "hei":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 134
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/16 v22, 0x0

    :goto_69
    const/16 v5, 0x10

    move/from16 v0, v22

    if-lt v0, v5, :cond_d3

    .line 144
    invoke-static {v9, v12, v13, v14, v15}, Lcom/framework/Cocos2dxBitmap;->nativeBitmapFontDC(Landroid/graphics/Bitmap;[I[I[I[I)V

    .line 145
    return-void

    .line 103
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "ch":[C
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v17    # "hei":I
    .end local v20    # "str":Ljava/lang/String;
    .end local v21    # "wid":I
    .end local v22    # "x":I
    :cond_73
    const/16 v5, 0x20

    move/from16 v0, v18

    if-ge v0, v5, :cond_83

    const/16 v5, 0x2a

    :goto_7b
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v18, v18, 0x1

    goto :goto_24

    .line 103
    :cond_83
    move/from16 v0, v18

    int-to-char v5, v0

    goto :goto_7b

    .line 111
    .restart local v3    # "ch":[C
    .restart local v11    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20    # "str":Ljava/lang/String;
    .restart local v22    # "x":I
    :cond_87
    const/16 v23, 0x0

    .local v23, "y":I
    :goto_89
    const/16 v5, 0x10

    move/from16 v0, v23

    if-lt v0, v5, :cond_92

    .line 110
    add-int/lit8 v22, v22, 0x1

    goto :goto_46

    .line 112
    :cond_92
    mul-int/lit8 v5, v23, 0x10

    add-int v4, v22, v5

    .line 113
    .local v4, "c":I
    const/4 v5, 0x1

    invoke-virtual {v8, v3, v4, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    aput v5, v14, v4

    .line 114
    const/4 v5, 0x0

    aget v5, v15, v5

    aput v5, v15, v4

    .line 115
    aget v5, v14, v4

    move/from16 v0, v16

    if-le v5, v0, :cond_b0

    .line 116
    aget v16, v14, v4

    .line 118
    :cond_b0
    aget v5, v15, v4

    if-le v5, v10, :cond_b6

    .line 119
    aget v10, v15, v4

    .line 111
    :cond_b6
    add-int/lit8 v23, v23, 0x1

    goto :goto_89

    .line 124
    .end local v4    # "c":I
    .end local v23    # "y":I
    :cond_b9
    const/16 v23, 0x0

    .restart local v23    # "y":I
    :goto_bb
    const/16 v5, 0x10

    move/from16 v0, v23

    if-lt v0, v5, :cond_c4

    .line 123
    add-int/lit8 v22, v22, 0x1

    goto :goto_4e

    .line 125
    :cond_c4
    mul-int/lit8 v5, v23, 0x10

    add-int v4, v22, v5

    .line 126
    .restart local v4    # "c":I
    mul-int v5, v16, v22

    aput v5, v12, v4

    .line 127
    mul-int v5, v10, v23

    aput v5, v13, v4

    .line 124
    add-int/lit8 v23, v23, 0x1

    goto :goto_bb

    .line 136
    .end local v4    # "c":I
    .end local v23    # "y":I
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "hei":I
    .restart local v21    # "wid":I
    :cond_d3
    const/16 v23, 0x0

    .restart local v23    # "y":I
    :goto_d5
    const/16 v5, 0x10

    move/from16 v0, v23

    if-lt v0, v5, :cond_de

    .line 135
    add-int/lit8 v22, v22, 0x1

    goto :goto_69

    .line 137
    :cond_de
    mul-int/lit8 v5, v23, 0x10

    add-int v4, v22, v5

    .line 138
    .restart local v4    # "c":I
    const/16 v5, 0x20

    if-lt v4, v5, :cond_fa

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_fa

    .line 139
    const/4 v5, 0x1

    aget v6, v12, v4

    int-to-float v6, v6

    aget v7, v13, v4

    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    sub-int v7, v7, v24

    int-to-float v7, v7

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 136
    :cond_fa
    add-int/lit8 v23, v23, 0x1

    goto :goto_d5
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 23
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "alignment"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 63
    invoke-static/range {p0 .. p0}, Lcom/framework/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static/range {p1 .. p3}, Lcom/framework/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v9

    .line 66
    .local v9, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v9, v1, v2}, Lcom/framework/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;Landroid/graphics/Paint;II)Lcom/framework/Cocos2dxBitmap$TextProperty;

    move-result-object v10

    .line 68
    .local v10, "textProperty":Lcom/framework/Cocos2dxBitmap$TextProperty;
    if-nez p5, :cond_37

    iget v4, v10, Lcom/framework/Cocos2dxBitmap$TextProperty;->totalHeight:I

    .line 71
    .local v4, "bitmapTotalHeight":I
    :goto_16
    iget v13, v10, Lcom/framework/Cocos2dxBitmap$TextProperty;->maxWidth:I

    .line 72
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 71
    invoke-static {v13, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 73
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 77
    .local v6, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v11, 0x0

    .line 78
    .local v11, "x":I
    if-nez p5, :cond_3a

    iget v13, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v12, v13

    .line 80
    .local v12, "y":I
    :goto_2d
    iget-object v8, v10, Lcom/framework/Cocos2dxBitmap$TextProperty;->lines:[Ljava/lang/String;

    .line 81
    .local v8, "lines":[Ljava/lang/String;
    array-length v14, v8

    const/4 v13, 0x0

    :goto_31
    if-lt v13, v14, :cond_46

    .line 87
    invoke-static {v3}, Lcom/framework/Cocos2dxBitmap;->nativeBitmapDC(Landroid/graphics/Bitmap;)V

    .line 88
    return-void

    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapTotalHeight":I
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_37
    move/from16 v4, p5

    .line 68
    goto :goto_16

    .line 79
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "bitmapTotalHeight":I
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local v6    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v11    # "x":I
    :cond_3a
    iget v13, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v13, v13

    iget v14, v10, Lcom/framework/Cocos2dxBitmap$TextProperty;->totalHeight:I

    sub-int v14, p5, v14

    div-int/lit8 v14, v14, 0x2

    add-int v12, v13, v14

    goto :goto_2d

    .line 81
    .restart local v8    # "lines":[Ljava/lang/String;
    .restart local v12    # "y":I
    :cond_46
    aget-object v7, v8, v13

    .line 82
    .local v7, "line":Ljava/lang/String;
    iget v15, v10, Lcom/framework/Cocos2dxBitmap$TextProperty;->maxWidth:I

    move/from16 v0, p3

    invoke-static {v9, v7, v15, v0}, Lcom/framework/Cocos2dxBitmap;->computeX(Landroid/graphics/Paint;Ljava/lang/String;II)I

    move-result v11

    .line 83
    int-to-float v15, v11

    int-to-float v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v7, v15, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    iget v15, v10, Lcom/framework/Cocos2dxBitmap$TextProperty;->heightPerLine:I

    add-int/2addr v12, v15

    .line 81
    add-int/lit8 v13, v13, 0x1

    goto :goto_31
.end method

.method private static divideStringWithMaxWidth(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;
    .registers 11
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 327
    .local v0, "charLength":I
    const/4 v3, 0x0

    .line 328
    .local v3, "start":I
    const/4 v5, 0x0

    .line 329
    .local v5, "tempWidth":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 334
    .local v4, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_c
    if-le v1, v0, :cond_18

    .line 369
    if-ge v3, v0, :cond_17

    .line 370
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_17
    return-object v4

    .line 335
    :cond_18
    invoke-virtual {p0, p1, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 336
    if-lt v5, p2, :cond_3d

    .line 337
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 339
    .local v2, "lastIndexOfSpace":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_40

    if-le v2, v3, :cond_40

    .line 343
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 344
    move v1, v2

    .line 362
    :goto_3c
    move v3, v1

    .line 334
    .end local v2    # "lastIndexOfSpace":I
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 350
    .restart local v2    # "lastIndexOfSpace":I
    :cond_40
    const/4 v6, 0x1

    if-le v1, v6, :cond_51

    if-le v5, p2, :cond_51

    .line 351
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v1, v1, -0x1

    .line 356
    goto :goto_3c

    .line 358
    :cond_51
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method

.method public static getFontWidth(Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    const/16 v1, 0x31

    invoke-static {p0, p1, v1}, Lcom/framework/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v0

    .line 55
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    return v1
.end method

.method private static native nativeBitmapDC(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeBitmapFontDC(Landroid/graphics/Bitmap;[I[I[I[I)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .registers 10
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "alignment"    # I

    .prologue
    const/4 v6, 0x0

    .line 377
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 382
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 385
    :try_start_1a
    sget-object v3, Lcom/framework/Cocos2dxBitmap;->context:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/framework/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 386
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_2c

    .line 397
    .end local v2    # "typeFace":Landroid/graphics/Typeface;
    :goto_23
    packed-switch p2, :pswitch_data_64

    .line 411
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 415
    :goto_2b
    return-object v1

    .line 387
    :catch_2c
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error to create ttf type face: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_23

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_23

    .line 399
    :pswitch_51
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2b

    .line 403
    :pswitch_57
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2b

    .line 407
    :pswitch_5d
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_2b

    .line 397
    nop

    :pswitch_data_64
    .packed-switch 0x31
        :pswitch_57
        :pswitch_5d
        :pswitch_51
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 421
    const-string v3, " "

    .line 449
    :goto_a
    return-object v3

    .line 431
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 433
    .local v1, "start":I
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, "index":I
    :goto_17
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    .line 449
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 435
    :cond_1f
    if-eqz v0, :cond_2b

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_45

    .line 436
    :cond_2b
    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v1, v0, 0x2

    .line 442
    :goto_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_1a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v0, v3, :cond_1a

    .line 446
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_17

    .line 439
    :cond_45
    add-int/lit8 v1, v0, 0x1

    goto :goto_32
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sput-object p0, Lcom/framework/Cocos2dxBitmap;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .registers 20
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "maxHeight"    # I
    .param p2, "maxWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 266
    const-string v11, "\\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "lines":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 268
    .local v9, "ret":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 269
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v12, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    .line 270
    .local v3, "heightPerLine":I
    div-int v8, p1, v3

    .line 272
    .local v8, "maxLines":I
    if-eqz p2, :cond_6d

    .line 273
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 274
    .local v10, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v12, v7

    const/4 v11, 0x0

    :goto_23
    if-lt v11, v12, :cond_3d

    .line 298
    :cond_25
    if-lez v8, :cond_33

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v8, :cond_33

    .line 299
    :goto_2d
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-gt v11, v8, :cond_69

    .line 304
    :cond_33
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 305
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 322
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_3c
    return-object v9

    .line 274
    .restart local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_3d
    aget-object v5, v7, v11

    .line 279
    .local v5, "line":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 280
    .local v6, "lineWidth":I
    move/from16 v0, p2

    if-le v6, v0, :cond_65

    .line 281
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v5, v1}, Lcom/framework/Cocos2dxBitmap;->divideStringWithMaxWidth(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 290
    :goto_5a
    if-lez v8, :cond_62

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-ge v13, v8, :cond_25

    .line 274
    :cond_62
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 284
    :cond_65
    invoke-virtual {v10, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 300
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineWidth":I
    :cond_69
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2d

    .line 307
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_6d
    if-eqz p1, :cond_8c

    array-length v11, v7

    if-le v11, v8, :cond_8c

    .line 311
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 312
    .restart local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_78
    if-lt v4, v8, :cond_84

    .line 315
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 316
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3c

    .line 313
    :cond_84
    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 319
    .end local v4    # "i":I
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_8c
    move-object v9, v7

    goto :goto_3c
.end method
