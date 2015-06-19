.class public final Lcom/ford/syncV4/trace/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:[Lcom/ford/syncV4/trace/enums/DetailLevel;
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/ford/syncV4/trace/enums/Mod;->values()[Lcom/ford/syncV4/trace/enums/Mod;
move-result-object v0
array-length v0, v0
new-array v0, v0, [Lcom/ford/syncV4/trace/enums/DetailLevel;
sput-object v0, Lcom/ford/syncV4/trace/a;->a:[Lcom/ford/syncV4/trace/enums/DetailLevel;
sget-object v1, Lcom/ford/syncV4/trace/enums/DetailLevel;->a:Lcom/ford/syncV4/trace/enums/DetailLevel;
const/4 v0, 0x0
:goto_c
sget-object v2, Lcom/ford/syncV4/trace/a;->a:[Lcom/ford/syncV4/trace/enums/DetailLevel;
array-length v2, v2
if-ge v0, v2, :cond_18
sget-object v2, Lcom/ford/syncV4/trace/a;->a:[Lcom/ford/syncV4/trace/enums/DetailLevel;
aput-object v1, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_18
return-void
.end method
.method public static a(Lcom/ford/syncV4/trace/enums/Mod;)Lcom/ford/syncV4/trace/enums/DetailLevel;
.registers 3
sget-object v0, Lcom/ford/syncV4/trace/a;->a:[Lcom/ford/syncV4/trace/enums/DetailLevel;
invoke-virtual {p0}, Lcom/ford/syncV4/trace/enums/Mod;->ordinal()I
move-result v1
aget-object v0, v0, v1
return-object v0
.end method