.class final Lcom/instagram/creation/video/gl/s;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/gl/GLRootView;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/gl/GLRootView;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/gl/s;->a:Lcom/instagram/creation/video/gl/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/gl/s;->a:Lcom/instagram/creation/video/gl/GLRootView;

    invoke-static {v0}, Lcom/instagram/creation/video/gl/GLRootView;->a(Lcom/instagram/creation/video/gl/GLRootView;)V

    return-void
.end method
