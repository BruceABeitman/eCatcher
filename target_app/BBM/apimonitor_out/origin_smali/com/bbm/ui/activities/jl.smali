.class final Lcom/bbm/ui/activities/jl;
.super Ljava/lang/Object;
.source "EphemeralImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/EphemeralImageActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/EphemeralImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/jl;->a:Lcom/bbm/ui/activities/EphemeralImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/jl;->a:Lcom/bbm/ui/activities/EphemeralImageActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->d(Lcom/bbm/ui/activities/EphemeralImageActivity;)Lcom/bbm/util/bf;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/activities/jl;->a:Lcom/bbm/ui/activities/EphemeralImageActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->d(Lcom/bbm/ui/activities/EphemeralImageActivity;)Lcom/bbm/util/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/bf;->b()V

    :cond_11
    return-void
.end method
