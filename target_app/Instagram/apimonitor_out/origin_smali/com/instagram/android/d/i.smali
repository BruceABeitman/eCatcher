.class final Lcom/instagram/android/d/i;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/d/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/d/h;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/d/i;->a:Lcom/instagram/android/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/d/i;->a:Lcom/instagram/android/d/h;

    iget-object v0, v0, Lcom/instagram/android/d/h;->a:Lcom/instagram/android/d/f;

    invoke-virtual {v0}, Lcom/instagram/android/d/f;->f()V

    return-void
.end method
