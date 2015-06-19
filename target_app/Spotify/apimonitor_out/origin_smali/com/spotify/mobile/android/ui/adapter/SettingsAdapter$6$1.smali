.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->d(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V

    :cond_9
    return-void
.end method
