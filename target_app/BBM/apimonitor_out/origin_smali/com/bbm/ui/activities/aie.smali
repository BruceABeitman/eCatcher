.class final Lcom/bbm/ui/activities/aie;
.super Lcom/bbm/ui/cj;
.source "StoreActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/StoreActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/StoreActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aie;->a:Lcom/bbm/ui/activities/StoreActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aie;->a:Lcom/bbm/ui/activities/StoreActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/StoreActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aie;->a:Lcom/bbm/ui/activities/StoreActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/StoreActivity;->a(Lcom/bbm/ui/activities/StoreActivity;)V

    return-void
.end method
