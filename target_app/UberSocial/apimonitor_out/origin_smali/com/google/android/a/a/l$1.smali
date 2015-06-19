.class Lcom/google/android/a/a/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/a/l;-><init>(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/a/k;

.field final synthetic b:Lcom/google/android/a/a/l;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/k;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/a/a/l$1;->b:Lcom/google/android/a/a/l;

    iput-object p2, p0, Lcom/google/android/a/a/l$1;->a:Lcom/google/android/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/a/a/l$1;->b:Lcom/google/android/a/a/l;

    iget-object v0, v0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;

    iget-object v1, p0, Lcom/google/android/a/a/l$1;->b:Lcom/google/android/a/a/l;

    invoke-static {v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/l;)Lcom/google/android/a/a/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/k;->a(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V

    iget-object v0, p0, Lcom/google/android/a/a/l$1;->b:Lcom/google/android/a/a/l;

    iget-object v0, v0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;

    iget-object v1, p0, Lcom/google/android/a/a/l$1;->b:Lcom/google/android/a/a/l;

    invoke-static {v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/l;)Lcom/google/android/a/a/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/k;->b(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V

    return-void
.end method
