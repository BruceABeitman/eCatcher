.class Lcom/google/android/gms/tagmanager/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# instance fields
.field final synthetic Ul:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$d;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$d;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    return-void
.end method


# virtual methods
.method public bc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/o;->bc(Ljava/lang/String;)V

    return-void
.end method

.method public iF()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->iF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iH()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->g(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/cg;->cl()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->Ul:Lcom/google/android/gms/tagmanager/o;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V

    :cond_13
    return-void
.end method
