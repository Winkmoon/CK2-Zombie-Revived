.class public final Lcom/bluegnc/chickenrevolution2/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field private static final KEY_LETTERBOX:Ljava/lang/String; = "letterbox"

.field private static final PREF:Ljava/lang/String; = "ck2_settings"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static addSettingsButton(Landroid/app/Activity;)V
    .registers 5

    .line 100
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_c

    .line 102
    return-void

    .line 104
    :cond_c
    check-cast v0, Landroid/widget/FrameLayout;

    .line 106
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    const-string v2, "\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v2, -0x33000001    # -1.3421772E8f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    const/4 v2, 0x7

    invoke-static {p0, v2}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 112
    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 113
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    const/high16 v2, 0x33000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 115
    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_51

    .line 117
    const/16 v2, 0x16

    invoke-static {p0, v2}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 120
    :cond_51
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    const/16 v3, 0x13

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v0, Lcom/bluegnc/chickenrevolution2/SettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method public static applyFullscreen(Landroid/app/Activity;)V
    .registers 4

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 41
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 42
    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1e

    .line 46
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    :cond_1e
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3e

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    .line 56
    if-eqz p0, :cond_3d

    .line 57
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 58
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 61
    :cond_3d
    goto :goto_44

    .line 62
    :cond_3e
    nop

    .line 68
    const/16 p0, 0x1706

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :goto_44
    return-void
.end method

.method public static applyLetterbox(Landroid/app/Activity;Landroid/view/View;Z)V
    .registers 5

    .line 74
    if-eqz p2, :cond_16

    .line 75
    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->fitSize(Landroid/app/Activity;)[I

    move-result-object p0

    .line 76
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {p2, v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    const/16 p0, 0x11

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    goto :goto_1c

    .line 79
    :cond_16
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p0, -0x1

    invoke-direct {p2, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    :goto_1c
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 136
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static fitSize(Landroid/app/Activity;)[I
    .registers 4

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 88
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 93
    mul-int/lit8 v1, p0, 0x2

    mul-int/lit8 v2, v0, 0x3

    if-le v1, v2, :cond_21

    .line 94
    div-int/lit8 v2, v2, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object p0

    return-object p0

    .line 96
    :cond_21
    div-int/lit8 v1, v1, 0x3

    filled-new-array {p0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static isLetterbox(Landroid/content/Context;)Z
    .registers 3

    .line 30
    const-string v0, "ck2_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 31
    const-string v0, "letterbox"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setLetterbox(Landroid/content/Context;Z)V
    .registers 4

    .line 35
    const-string v0, "ck2_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 36
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "letterbox"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method

.method public static showSettingsDialog(Landroid/app/Activity;)V
    .registers 5

    .line 140
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v1, "\u4fdd\u6301\u539f\u6bd4\u4f8b\uff08\u4e24\u4fa7\u9ed1\u8fb9\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 143
    invoke-static {p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->isLetterbox(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    const-string v2, "\u5173\u95ed\u65f6\u4e3a\u5168\u5c4f\u62c9\u4f38\uff08\u9ed8\u8ba4\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    const/16 v2, 0x1c

    invoke-static {p0, v2}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 154
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lcom/bluegnc/chickenrevolution2/SettingsHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 155
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 156
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const-string v3, "\u663e\u793a\u8bbe\u7f6e"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;

    invoke-direct {v2, p0, v0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper$3;-><init>(Landroid/app/Activity;Landroid/widget/CheckBox;)V

    .line 162
    const-string v0, "\u786e\u5b9a"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bluegnc/chickenrevolution2/SettingsHelper$2;

    invoke-direct {v1, p0}, Lcom/bluegnc/chickenrevolution2/SettingsHelper$2;-><init>(Landroid/app/Activity;)V

    .line 174
    const-string p0, "\u53d6\u6d88"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 182
    return-void
.end method
