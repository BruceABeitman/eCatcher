.class final Lcom/instagram/android/maps/ui/p;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/p;->a:Lcom/instagram/android/maps/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/ui/p;->a:Lcom/instagram/android/maps/ui/m;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->h(Lcom/instagram/android/maps/ui/m;)V

    return-void
.end method
