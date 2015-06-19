.class public final enum Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
.field public static final enum b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
.field private static final synthetic c:[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
const-string v1, "Yes"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
const-string v1, "No"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
aput-object v1, v0, v3
sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->c:[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->c:[Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;
return-object v0
.end method