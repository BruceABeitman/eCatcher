.class Lcom/google/android/gms/tagmanager/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# instance fields
.field final synthetic Ul:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$1;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$1;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/o;->bc(Ljava/lang/String;)V

    return-void
.end method

.method public iF()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$1;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->iF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iH()V
    .registers 2

    const-string v0, "Refresh ignored: container loaded as default only."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    return-void
.end method
