.class final Lcom/bbm/ui/activities/wa;
.super Lcom/bbm/j/k;
.source "MainActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/wa;->a:Lcom/bbm/ui/activities/MainActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    invoke-static {}, Lcom/bbm/ui/activities/MainActivity;->k()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/a;->f:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/activities/wa;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/wa;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/c/fm;)V

    return-void
.end method
