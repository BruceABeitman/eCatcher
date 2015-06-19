.class public final enum Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
.field public static final enum b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
.field private static final synthetic c:[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
const-string v1, "Yes"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
const-string v1, "No"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
aput-object v1, v0, v3
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->c:[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->c:[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanBrowseAlbum;
return-object v0
.end method