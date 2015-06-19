.class abstract Lcom/spotify/mobile/android/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/ui/ActionBarTitle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title_alpha"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v2, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-direct {v2, p1, v0}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a(F)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/i;
.end method

.method public final a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    return-void
.end method

.method public abstract b()Landroid/view/View;
.end method

.method public abstract b(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/h;
.end method

.method public abstract c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;
.end method

.method public abstract c()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public d(Landroid/support/v4/app/w;)V
    .registers 2

    return-void
.end method

.method public e()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title_alpha"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "type"

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/j;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final f()Lcom/spotify/mobile/android/ui/ActionBarTitle;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/j;->a:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    return-object v0
.end method
