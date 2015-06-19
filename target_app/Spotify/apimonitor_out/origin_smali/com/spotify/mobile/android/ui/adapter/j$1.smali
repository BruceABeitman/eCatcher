.class final Lcom/spotify/mobile/android/ui/adapter/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/android/paste/widget/NavigationItemView;

.field final synthetic b:Lcom/spotify/mobile/android/ui/adapter/j;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/j;Lcom/spotify/android/paste/widget/NavigationItemView;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/j$1;->b:Lcom/spotify/mobile/android/ui/adapter/j;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/j$1;->a:Lcom/spotify/android/paste/widget/NavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j$1;->a:Lcom/spotify/android/paste/widget/NavigationItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(I)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j$1;->a:Lcom/spotify/android/paste/widget/NavigationItemView;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(I)V

    return-void
.end method
