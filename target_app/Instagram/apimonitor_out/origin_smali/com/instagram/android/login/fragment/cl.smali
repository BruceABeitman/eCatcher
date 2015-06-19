.class final Lcom/instagram/android/login/fragment/cl;
.super Ljava/lang/Object;
.source "VerifyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ck;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/cl;->a:Lcom/instagram/android/login/fragment/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/cl;->a:Lcom/instagram/android/login/fragment/ck;

    iget-object v0, v0, Lcom/instagram/android/login/fragment/ck;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->c(Lcom/instagram/android/login/fragment/ci;)V

    return-void
.end method
