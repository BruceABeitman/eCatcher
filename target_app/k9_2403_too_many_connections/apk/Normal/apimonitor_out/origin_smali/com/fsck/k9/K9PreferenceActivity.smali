.class public Lcom/fsck/k9/K9PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "K9PreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/K9PreferenceActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
