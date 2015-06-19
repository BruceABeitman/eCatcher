.class final Lcom/instagram/android/login/fragment/cq;
.super Lcom/instagram/ui/dialog/g;
.source "VerifyFragment.java"


# instance fields
.field final synthetic aa:Lcom/instagram/android/login/fragment/co;


# direct methods
.method public constructor <init>(Lcom/instagram/android/login/fragment/co;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/cq;->aa:Lcom/instagram/android/login/fragment/co;

    invoke-direct {p0}, Lcom/instagram/ui/dialog/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final U()Ljava/lang/String;
    .registers 2

    sget v0, Lcom/facebook/az;->robocalling_confirmation:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/cq;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
