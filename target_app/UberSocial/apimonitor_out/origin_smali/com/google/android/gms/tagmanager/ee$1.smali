.class Lcom/google/android/gms/tagmanager/ee$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ef;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ee;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ee$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tagmanager/ag;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ee$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/fh;->a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/ag;

    move-result-object v0

    return-object v0
.end method
