.class final Lcom/bbm/ui/ek;
.super Ljava/lang/Object;
.source "ObservingImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ObservingImageView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ObservingImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ek;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ek;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->invalidate()V

    return-void
.end method
