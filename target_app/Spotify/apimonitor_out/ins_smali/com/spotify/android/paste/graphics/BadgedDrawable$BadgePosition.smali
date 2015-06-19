.class public final enum Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.field public static final enum b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.field public static final enum c:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.field public static final enum d:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.field private static final synthetic e:[Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
const-string v1, "TOP_LEFT"
invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
new-instance v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
const-string v1, "TOP_RIGHT"
invoke-direct {v0, v1, v3}, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
new-instance v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
const-string v1, "BOTTOM_LEFT"
invoke-direct {v0, v1, v4}, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->c:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
new-instance v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
const-string v1, "BOTTOM_RIGHT"
invoke-direct {v0, v1, v5}, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->d:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
const/4 v0, 0x4
new-array v0, v0, [Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
sget-object v1, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->b:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->c:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->d:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->e:[Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.registers 2
const-class v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
return-object v0
.end method
.method public static values()[Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
.registers 1
sget-object v0, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->e:[Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
invoke-virtual {v0}, [Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;
return-object v0
.end method