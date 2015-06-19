.class final Lcom/instagram/android/maps/d/q;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/d/p;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/d/p;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/d/q;->a:Lcom/instagram/android/maps/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/d/q;->a:Lcom/instagram/android/maps/d/p;

    iget-object v0, v0, Lcom/instagram/android/maps/d/p;->a:Lcom/instagram/android/maps/d/l;

    invoke-static {v0}, Lcom/instagram/android/maps/d/l;->d(Lcom/instagram/android/maps/d/l;)V

    return-void
.end method
