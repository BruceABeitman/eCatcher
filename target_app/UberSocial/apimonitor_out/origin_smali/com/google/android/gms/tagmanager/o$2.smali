.class Lcom/google/android/gms/tagmanager/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/p;Lcom/google/android/gms/internal/je;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$2;->a:Lcom/google/android/gms/tagmanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$2;->a:Lcom/google/android/gms/tagmanager/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/tagmanager/o;)V

    return-void
.end method
