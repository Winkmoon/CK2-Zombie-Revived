package com.flurry.sdk;

/* loaded from: /root/game/opensource/CK2-Zombie-Revived/build/classes.dex */
public final class ly {
    private static final java.util.regex.Pattern a = java.util.regex.Pattern.compile("/");

    public static java.lang.String a(java.lang.String str) {
        java.net.URI i;
        int indexOf;
        if (!android.text.TextUtils.isEmpty(str) && (i = i(str)) != null) {
            java.lang.String scheme = i.getScheme();
            if (android.text.TextUtils.isEmpty(scheme)) {
                return "http" + str;
            }
            java.lang.String lowerCase = scheme.toLowerCase();
            return (scheme == null || scheme.equals(lowerCase) || (indexOf = str.indexOf(scheme)) < 0) ? str : lowerCase + str.substring(scheme.length() + indexOf);
        }
        return str;
    }

    public static java.lang.String b(java.lang.String str) {
        java.net.URI i;
        java.net.URI a2;
        if (!android.text.TextUtils.isEmpty(str) && (i = i(str)) != null) {
            java.net.URI normalize = i.normalize();
            if (!normalize.isOpaque() && (a2 = a(normalize.getScheme(), normalize.getAuthority(), "/", null, null)) != null) {
                return a2.toString();
            }
            return str;
        }
        return str;
    }

    public static java.lang.String c(java.lang.String str) {
        java.net.URI i;
        java.net.URI resolve;
        if (!android.text.TextUtils.isEmpty(str) && (i = i(str)) != null) {
            java.net.URI normalize = i.normalize();
            if (!normalize.isOpaque() && (resolve = normalize.resolve("./")) != null) {
                return resolve.toString();
            }
            return str;
        }
        return str;
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2) {
        java.net.URI i;
        java.lang.String str3;
        if (!android.text.TextUtils.isEmpty(str) && !android.text.TextUtils.isEmpty(str2) && (i = i(str)) != null) {
            java.net.URI normalize = i.normalize();
            java.net.URI i2 = i(str2);
            if (i2 != null) {
                java.net.URI normalize2 = i2.normalize();
                if (!normalize.isOpaque() && !normalize2.isOpaque()) {
                    java.lang.String scheme = normalize.getScheme();
                    java.lang.String scheme2 = normalize2.getScheme();
                    if (scheme2 != null || scheme == null) {
                        if (scheme2 == null || scheme2.equals(scheme)) {
                            java.lang.String authority = normalize.getAuthority();
                            java.lang.String authority2 = normalize2.getAuthority();
                            if (authority2 != null || authority == null) {
                                if (authority2 == null || authority2.equals(authority)) {
                                    java.lang.String path = normalize.getPath();
                                    java.lang.String path2 = normalize2.getPath();
                                    java.lang.String[] split = a.split(path, -1);
                                    java.lang.String[] split2 = a.split(path2, -1);
                                    int length = split.length;
                                    int length2 = split2.length;
                                    int i3 = 0;
                                    while (i3 < length2 && i3 < length && split[i3].equals(split2[i3])) {
                                        i3++;
                                    }
                                    java.lang.String query = normalize.getQuery();
                                    java.lang.String fragment = normalize.getFragment();
                                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                                    if (i3 == length2 && i3 == length) {
                                        java.lang.String query2 = normalize2.getQuery();
                                        java.lang.String fragment2 = normalize2.getFragment();
                                        boolean equals = android.text.TextUtils.equals(query, query2);
                                        boolean equals2 = android.text.TextUtils.equals(fragment, fragment2);
                                        if (equals && equals2) {
                                            fragment = null;
                                            query = null;
                                        } else {
                                            java.lang.String str4 = (!equals || android.text.TextUtils.isEmpty(fragment)) ? query : null;
                                            if (android.text.TextUtils.isEmpty(str4) && android.text.TextUtils.isEmpty(fragment)) {
                                                sb.append(split[length - 1]);
                                                str3 = fragment;
                                            } else {
                                                query = str4;
                                                str3 = fragment;
                                            }
                                            fragment = str3;
                                        }
                                    } else {
                                        int i4 = length - 1;
                                        int i5 = length2 - 1;
                                        for (int i6 = i3; i6 < i5; i6++) {
                                            sb.append("..");
                                            sb.append("/");
                                        }
                                        while (i3 < i4) {
                                            sb.append(split[i3]);
                                            sb.append("/");
                                            i3++;
                                        }
                                        if (i3 < length) {
                                            sb.append(split[i3]);
                                        }
                                        if (sb.length() == 0) {
                                            sb.append(".");
                                            sb.append("/");
                                        }
                                    }
                                    java.net.URI a2 = a(null, null, sb.toString(), query, fragment);
                                    if (a2 != null) {
                                        return a2.toString();
                                    }
                                    return str;
                                }
                                return str;
                            }
                            return str;
                        }
                        return str;
                    }
                    return str;
                }
                return str;
            }
            return str;
        }
        return str;
    }

    private static java.net.URI i(java.lang.String str) {
        try {
            return new java.net.URI(str);
        } catch (java.net.URISyntaxException e) {
            return null;
        }
    }

    private static java.net.URI a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
        try {
            return new java.net.URI(str, str2, str3, str4, str5);
        } catch (java.net.URISyntaxException e) {
            return null;
        }
    }

    public static boolean d(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        android.net.Uri parse = android.net.Uri.parse(str);
        return parse.getScheme() != null && parse.getScheme().equals("market");
    }

    public static boolean e(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        android.net.Uri parse = android.net.Uri.parse(str);
        if (parse.getScheme() != null) {
            return parse.getScheme().equals("http") || parse.getScheme().equals("https");
        }
        return false;
    }

    public static boolean f(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        android.net.Uri parse = android.net.Uri.parse(str);
        return parse.getHost() != null && parse.getHost().equals("play.google.com") && parse.getScheme() != null && parse.getScheme().startsWith("http");
    }

    public static boolean g(java.lang.String str) {
        java.lang.String mimeTypeFromExtension;
        return (android.text.TextUtils.isEmpty(str) || (mimeTypeFromExtension = android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(android.webkit.MimeTypeMap.getFileExtensionFromUrl(str))) == null || !mimeTypeFromExtension.startsWith("video/")) ? false : true;
    }

    public static boolean h(java.lang.String str) {
        java.net.URI i;
        if (android.text.TextUtils.isEmpty(str) || (i = i(str)) == null) {
            return false;
        }
        return i.getScheme() == null || "http".equalsIgnoreCase(i.getScheme()) || "https".equalsIgnoreCase(i.getScheme());
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2) {
        if (!android.text.TextUtils.isEmpty(str)) {
            try {
                if (!new java.net.URI(str).isAbsolute() && !android.text.TextUtils.isEmpty(str2)) {
                    java.net.URI uri = new java.net.URI(str2);
                    return uri.getScheme() + "://" + uri.getHost() + str;
                }
                return str;
            } catch (java.lang.Exception e) {
                return str;
            }
        }
        return str;
    }
}
