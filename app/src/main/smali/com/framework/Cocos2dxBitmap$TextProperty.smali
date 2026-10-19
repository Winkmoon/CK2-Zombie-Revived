.class Lcom/framework/Cocos2dxBitmap$TextProperty;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/framework/Cocos2dxBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextProperty"
.end annotation


# instance fields
.field heightPerLine:I

.field lines:[Ljava/lang/String;

.field maxWidth:I

.field totalHeight:I


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "lines"    # [Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/framework/Cocos2dxBitmap$TextProperty;->maxWidth:I

    .line 229
    iput p2, p0, Lcom/framework/Cocos2dxBitmap$TextProperty;->heightPerLine:I

    .line 230
    array-length v0, p3

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/framework/Cocos2dxBitmap$TextProperty;->totalHeight:I

    .line 231
    iput-object p3, p0, Lcom/framework/Cocos2dxBitmap$TextProperty;->lines:[Ljava/lang/String;

    .line 232
    return-void
.end method
