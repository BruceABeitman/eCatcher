.class public final enum Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

.field public static final enum b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

.field private static final synthetic c:[Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    const-string v1, "Yes"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    const-string v1, "No"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->c:[Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->c:[Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;

    return-object v0
.end method