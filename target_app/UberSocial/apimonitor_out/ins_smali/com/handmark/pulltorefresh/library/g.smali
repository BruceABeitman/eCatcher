.class public final enum Lcom/handmark/pulltorefresh/library/g;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/handmark/pulltorefresh/library/g;
.field public static final enum b:Lcom/handmark/pulltorefresh/library/g;
.field public static final enum c:Lcom/handmark/pulltorefresh/library/g;
.field public static final enum d:Lcom/handmark/pulltorefresh/library/g;
.field public static final enum e:Lcom/handmark/pulltorefresh/library/g;
.field public static f:Lcom/handmark/pulltorefresh/library/g;
.field public static g:Lcom/handmark/pulltorefresh/library/g;
.field private static final synthetic i:[Lcom/handmark/pulltorefresh/library/g;
.field private h:I
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/g;
const-string v1, "DISABLED"
invoke-direct {v0, v1, v2, v2}, Lcom/handmark/pulltorefresh/library/g;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/g;
new-instance v0, Lcom/handmark/pulltorefresh/library/g;
const-string v1, "PULL_FROM_START"
invoke-direct {v0, v1, v3, v3}, Lcom/handmark/pulltorefresh/library/g;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
new-instance v0, Lcom/handmark/pulltorefresh/library/g;
const-string v1, "PULL_FROM_END"
invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/g;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;
new-instance v0, Lcom/handmark/pulltorefresh/library/g;
const-string v1, "BOTH"
invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/g;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;
new-instance v0, Lcom/handmark/pulltorefresh/library/g;
const-string v1, "MANUAL_REFRESH_ONLY"
invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/g;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->e:Lcom/handmark/pulltorefresh/library/g;
const/4 v0, 0x5
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/g;
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/g;
aput-object v1, v0, v2
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
aput-object v1, v0, v3
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;
aput-object v1, v0, v4
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;
aput-object v1, v0, v5
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->e:Lcom/handmark/pulltorefresh/library/g;
aput-object v1, v0, v6
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->i:[Lcom/handmark/pulltorefresh/library/g;
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->f:Lcom/handmark/pulltorefresh/library/g;
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;
sput-object v0, Lcom/handmark/pulltorefresh/library/g;->g:Lcom/handmark/pulltorefresh/library/g;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/handmark/pulltorefresh/library/g;->h:I
return-void
.end method
.method static a()Lcom/handmark/pulltorefresh/library/g;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
return-object v0
.end method
.method static a(I)Lcom/handmark/pulltorefresh/library/g;
.registers 6
invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->values()[Lcom/handmark/pulltorefresh/library/g;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_16
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->e()I
move-result v4
if-ne p0, v4, :cond_12
:goto_11
return-object v0
:cond_12
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_16
invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->a()Lcom/handmark/pulltorefresh/library/g;
move-result-object v0
goto :goto_11
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/g;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/g;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/g;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/g;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->i:[Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/g;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/handmark/pulltorefresh/library/g;
return-object v0
.end method
.method  b()Z
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/g;
if-eq p0, v0, :cond_a
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->e:Lcom/handmark/pulltorefresh/library/g;
if-eq p0, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public c()Z
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
if-eq p0, v0, :cond_8
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;
if-ne p0, v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public d()Z
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;
if-eq p0, v0, :cond_c
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;
if-eq p0, v0, :cond_c
sget-object v0, Lcom/handmark/pulltorefresh/library/g;->e:Lcom/handmark/pulltorefresh/library/g;
if-ne p0, v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method  e()I
.registers 2
iget v0, p0, Lcom/handmark/pulltorefresh/library/g;->h:I
return v0
.end method