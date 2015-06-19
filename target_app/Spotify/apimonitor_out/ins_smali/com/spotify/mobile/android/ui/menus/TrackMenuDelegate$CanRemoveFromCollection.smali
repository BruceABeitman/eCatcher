.class public final enum Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.field public static final enum b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.field public static final enum c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.field private static final synthetic d:[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
const-string v1, "Yes"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
const-string v1, "No"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
new-instance v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
const-string v1, "Depends"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->b:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->c:Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
aput-object v1, v0, v4
sput-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->d:[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->d:[Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate$CanRemoveFromCollection;
return-object v0
.end method