.class final Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->b(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/j;)V

    return-void
.end method
