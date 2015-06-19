.class final Lcom/instagram/android/e;
.super Ljava/lang/Object;
.source "InstagramApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/InstagramApplication;


# direct methods
.method constructor <init>(Lcom/instagram/android/InstagramApplication;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/e;->a:Lcom/instagram/android/InstagramApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/instagram/android/e;->a:Lcom/instagram/android/InstagramApplication;

    invoke-static {v0}, Lcom/instagram/android/InstagramApplication;->c(Lcom/instagram/android/InstagramApplication;)V

    :cond_b
    return-void
.end method
