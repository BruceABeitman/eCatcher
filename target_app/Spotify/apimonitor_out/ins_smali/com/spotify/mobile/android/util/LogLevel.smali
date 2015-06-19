.class abstract enum Lcom/spotify/mobile/android/util/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/util/LogLevel;
.field public static final enum b:Lcom/spotify/mobile/android/util/LogLevel;
.field public static final enum c:Lcom/spotify/mobile/android/util/LogLevel;
.field public static final enum d:Lcom/spotify/mobile/android/util/LogLevel;
.field public static final enum e:Lcom/spotify/mobile/android/util/LogLevel;
.field public static final enum f:Lcom/spotify/mobile/android/util/LogLevel;
.field private static final g:Ljava/util/Collection;
.field private static final h:Ljava/util/Collection;
.field private static final synthetic i:[Lcom/spotify/mobile/android/util/LogLevel;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/util/LogLevel$1;
const-string v1, "DEBUG"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LogLevel$1;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->a:Lcom/spotify/mobile/android/util/LogLevel;
new-instance v0, Lcom/spotify/mobile/android/util/LogLevel$2;
const-string v1, "VERBOSE"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LogLevel$2;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->b:Lcom/spotify/mobile/android/util/LogLevel;
new-instance v0, Lcom/spotify/mobile/android/util/LogLevel$3;
const-string v1, "INFO"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LogLevel$3;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->c:Lcom/spotify/mobile/android/util/LogLevel;
new-instance v0, Lcom/spotify/mobile/android/util/LogLevel$4;
const-string v1, "WARNING"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LogLevel$4;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->d:Lcom/spotify/mobile/android/util/LogLevel;
new-instance v0, Lcom/spotify/mobile/android/util/LogLevel$5;
const-string v1, "ERROR"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LogLevel$5;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->e:Lcom/spotify/mobile/android/util/LogLevel;
new-instance v0, Lcom/spotify/mobile/android/util/LogLevel$6;
const-string v1, "YELL"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/LogLevel$6;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->f:Lcom/spotify/mobile/android/util/LogLevel;
const/4 v0, 0x6
new-array v0, v0, [Lcom/spotify/mobile/android/util/LogLevel;
const/4 v1, 0x0
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->a:Lcom/spotify/mobile/android/util/LogLevel;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->b:Lcom/spotify/mobile/android/util/LogLevel;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->c:Lcom/spotify/mobile/android/util/LogLevel;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->d:Lcom/spotify/mobile/android/util/LogLevel;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->e:Lcom/spotify/mobile/android/util/LogLevel;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->f:Lcom/spotify/mobile/android/util/LogLevel;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->i:[Lcom/spotify/mobile/android/util/LogLevel;
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->e:Lcom/spotify/mobile/android/util/LogLevel;
invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->g:Ljava/util/Collection;
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->c:Lcom/spotify/mobile/android/util/LogLevel;
sget-object v1, Lcom/spotify/mobile/android/util/LogLevel;->d:Lcom/spotify/mobile/android/util/LogLevel;
sget-object v2, Lcom/spotify/mobile/android/util/LogLevel;->e:Lcom/spotify/mobile/android/util/LogLevel;
invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/LogLevel;->h:Ljava/util/Collection;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/LogLevel;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "["
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "] "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/LogLevel;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/LogLevel;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/LogLevel;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/util/LogLevel;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->i:[Lcom/spotify/mobile/android/util/LogLevel;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/LogLevel;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/util/LogLevel;
return-object v0
.end method
.method abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
.method protected final a()Z
.registers 2
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->g:Ljava/util/Collection;
invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->h:Ljava/util/Collection;
invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method protected final b()Z
.registers 2
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->g:Ljava/util/Collection;
invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final c()Z
.registers 2
sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->h:Ljava/util/Collection;
invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method