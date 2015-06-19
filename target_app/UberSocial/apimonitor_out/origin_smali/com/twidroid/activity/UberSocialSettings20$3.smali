.class Lcom/twidroid/activity/UberSocialSettings20$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSettings20;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$3;->a:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
