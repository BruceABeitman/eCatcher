.class Lcom/google/android/gms/tagmanager/co$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ex;Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/tagmanager/cp;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/co;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/co;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co$2;->a:Lcom/google/android/gms/tagmanager/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/cn;
    .registers 5

    new-instance v0, Lcom/google/android/gms/tagmanager/cn;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co$2;->a:Lcom/google/android/gms/tagmanager/co;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/co;->a(Lcom/google/android/gms/tagmanager/co;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/co$2;->a:Lcom/google/android/gms/tagmanager/co;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/co;->b(Lcom/google/android/gms/tagmanager/co;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/cn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ex;)V

    return-object v0
.end method
