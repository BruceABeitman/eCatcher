.class public final enum Lcom/handmark/pulltorefresh/library/m;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/handmark/pulltorefresh/library/m;
.field public static final enum b:Lcom/handmark/pulltorefresh/library/m;
.field private static final synthetic c:[Lcom/handmark/pulltorefresh/library/m;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/m;
const-string v1, "VERTICAL"
invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;
new-instance v0, Lcom/handmark/pulltorefresh/library/m;
const-string v1, "HORIZONTAL"
invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;
const/4 v0, 0x2
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/m;
sget-object v1, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;
aput-object v1, v0, v2
sget-object v1, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;
aput-object v1, v0, v3
sput-object v0, Lcom/handmark/pulltorefresh/library/m;->c:[Lcom/handmark/pulltorefresh/library/m;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/m;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/m;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/m;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/m;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/m;->c:[Lcom/handmark/pulltorefresh/library/m;
invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/m;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/handmark/pulltorefresh/library/m;
return-object v0
.end method