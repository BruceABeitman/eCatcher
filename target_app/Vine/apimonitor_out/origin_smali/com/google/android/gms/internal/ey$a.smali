.class Lcom/google/android/gms/internal/ey$a;
.super Landroid/content/MutableContextWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private lx:Landroid/content/Context;

.field private sD:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ey$a;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ca()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey$a;->sD:Landroid/app/Activity;

    return-object v0
.end method

.method public setBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ey$a;->lx:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_14

    check-cast p1, Landroid/app/Activity;

    :goto_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ey$a;->sD:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ey$a;->lx:Landroid/content/Context;

    invoke-super {p0, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void

    :cond_14
    const/4 p1, 0x0

    goto :goto_c
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ey$a;->sD:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ey$a;->sD:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_9
    return-void

    :cond_a
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ey$a;->lx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method
