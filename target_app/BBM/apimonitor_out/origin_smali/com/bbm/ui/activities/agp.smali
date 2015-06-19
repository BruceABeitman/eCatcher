.class final Lcom/bbm/ui/activities/agp;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/bbm/ui/p;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/agp;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/bbm/ui/activities/agp;->a:Lcom/bbm/ui/activities/SettingsActivity;

    const-string v2, "contacts_layout_grid"

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;Z)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
