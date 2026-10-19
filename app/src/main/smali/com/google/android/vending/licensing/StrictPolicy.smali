.class public Lcom/google/android/vending/licensing/StrictPolicy;
.super Ljava/lang/Object;
.source "StrictPolicy.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# instance fields
.field private mLastResponse:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x123

    iput v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    .line 39
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .registers 3
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    .line 51
    return-void
.end method
