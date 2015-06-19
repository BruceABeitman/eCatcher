.class Lcom/google/android/gms/tagmanager/ai$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ai;->a(Ljava/lang/String;J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ah;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/tagmanager/ai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ai;Lcom/google/android/gms/tagmanager/ah;JLjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Lcom/google/android/gms/tagmanager/ai;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ai$1;->a:Lcom/google/android/gms/tagmanager/ah;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/ai$1;->b:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/ai$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Lcom/google/android/gms/tagmanager/ai;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/ai;)Lcom/google/android/gms/tagmanager/aj;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/tagmanager/dj;->b()Lcom/google/android/gms/tagmanager/dj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Lcom/google/android/gms/tagmanager/ai;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ai;->b(Lcom/google/android/gms/tagmanager/ai;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ai$1;->a:Lcom/google/android/gms/tagmanager/ah;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/dj;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ah;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Lcom/google/android/gms/tagmanager/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dj;->c()Lcom/google/android/gms/tagmanager/aj;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/ai;Lcom/google/android/gms/tagmanager/aj;)Lcom/google/android/gms/tagmanager/aj;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Lcom/google/android/gms/tagmanager/ai;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/ai;)Lcom/google/android/gms/tagmanager/aj;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/ai$1;->b:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ai$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/aj;->a(JLjava/lang/String;)V

    return-void
.end method
