.class Lcom/google/android/a/a/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/a/l;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/a/a/l;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/l;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    iput p2, p0, Lcom/google/android/a/a/l$2;->a:I

    iput-object p3, p0, Lcom/google/android/a/a/l$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/a/a/l$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    iget-object v0, v0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;

    invoke-static {v0}, Lcom/google/android/a/a/k;->a(Lcom/google/android/a/a/k;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    invoke-static {v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/l;)Lcom/google/android/a/a/n;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    invoke-static {v0}, Lcom/google/android/a/a/l;->b(Lcom/google/android/a/a/l;)V

    iget-object v0, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    invoke-static {v0}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/l;)Lcom/google/android/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    iget-object v1, v1, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;

    invoke-static {v1}, Lcom/google/android/a/a/k;->b(Lcom/google/android/a/a/k;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/google/android/a/a/l$2;->a:I

    iget-object v3, p0, Lcom/google/android/a/a/l$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/a/a/l$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/a/a/n;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    iget-object v0, v0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;

    iget-object v1, p0, Lcom/google/android/a/a/l$2;->d:Lcom/google/android/a/a/l;

    invoke-static {v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/l;)Lcom/google/android/a/a/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/k;->b(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V

    :cond_44
    return-void
.end method
