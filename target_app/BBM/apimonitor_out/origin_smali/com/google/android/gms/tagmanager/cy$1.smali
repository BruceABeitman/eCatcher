.class Lcom/google/android/gms/tagmanager/cy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/au;


# instance fields
.field final synthetic Xq:Lcom/google/android/gms/tagmanager/cy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cy$1;->Xq:Lcom/google/android/gms/tagmanager/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cy$1;->Xq:Lcom/google/android/gms/tagmanager/cy;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cy$1;->Xq:Lcom/google/android/gms/tagmanager/cy;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cy;->a(Lcom/google/android/gms/tagmanager/cy;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tagmanager/cy;->a(ZZ)V

    return-void
.end method
