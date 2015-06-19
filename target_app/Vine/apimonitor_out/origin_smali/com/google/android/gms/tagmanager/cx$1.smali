.class Lcom/google/android/gms/tagmanager/cx$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/au;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahS:Lcom/google/android/gms/tagmanager/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cx$1;->ahS:Lcom/google/android/gms/tagmanager/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx$1;->ahS:Lcom/google/android/gms/tagmanager/cx;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx$1;->ahS:Lcom/google/android/gms/tagmanager/cx;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cx;->a(Lcom/google/android/gms/tagmanager/cx;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tagmanager/cx;->a(ZZ)V

    return-void
.end method
