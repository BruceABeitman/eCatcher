.class Lcom/google/android/gms/tagmanager/cr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cr;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cr$1;->a:Lcom/google/android/gms/tagmanager/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cr$1;->a:Lcom/google/android/gms/tagmanager/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cr;->b()V

    return-void
.end method
