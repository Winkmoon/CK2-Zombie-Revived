.class Lcom/framework/MsgBox;
.super Ljava/lang/Object;
.source "OGLActivity.java"


# instance fields
.field cont:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "cont"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/framework/MsgBox;->title:Ljava/lang/String;

    .line 472
    iput-object p2, p0, Lcom/framework/MsgBox;->cont:Ljava/lang/String;

    .line 473
    iput p3, p0, Lcom/framework/MsgBox;->type:I

    .line 474
    return-void
.end method
