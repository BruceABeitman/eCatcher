.class final Lcom/bbm/ui/activities/ags;
.super Lcom/bbm/ui/cj;
.source "SettingsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ags;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ags;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SettingsActivity;->finish()V

    return-void
.end method
