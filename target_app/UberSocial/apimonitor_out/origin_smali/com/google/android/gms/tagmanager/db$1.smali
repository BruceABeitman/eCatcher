.class Lcom/google/android/gms/tagmanager/db$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ej;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/db;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cv;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/ez;Lcom/google/android/gms/tagmanager/ez;Lcom/google/android/gms/tagmanager/w;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/db;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/db;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/db$1;->a:Lcom/google/android/gms/tagmanager/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ct;Lcom/google/android/gms/tagmanager/bs;)I
    .registers 4

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->a()I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/tagmanager/ct;

    check-cast p2, Lcom/google/android/gms/tagmanager/bs;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/db$1;->a(Lcom/google/android/gms/tagmanager/ct;Lcom/google/android/gms/tagmanager/bs;)I

    move-result v0

    return v0
.end method
