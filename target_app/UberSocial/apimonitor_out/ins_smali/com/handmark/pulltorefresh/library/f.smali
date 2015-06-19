.class public final enum Lcom/handmark/pulltorefresh/library/f;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/handmark/pulltorefresh/library/f;
.field public static final enum b:Lcom/handmark/pulltorefresh/library/f;
.field public static final enum c:Lcom/handmark/pulltorefresh/library/f;
.field private static final synthetic d:[Lcom/handmark/pulltorefresh/library/f;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/f;
const-string v1, "ROTATE"
invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;
new-instance v0, Lcom/handmark/pulltorefresh/library/f;
const-string v1, "FLIP"
invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;
new-instance v0, Lcom/handmark/pulltorefresh/library/f;
const-string v1, "VARIABLE"
invoke-direct {v0, v1, v4}, Lcom/handmark/pulltorefresh/library/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;
const/4 v0, 0x3
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/f;
sget-object v1, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;
aput-object v1, v0, v2
sget-object v1, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;
aput-object v1, v0, v3
sget-object v1, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;
aput-object v1, v0, v4
sput-object v0, Lcom/handmark/pulltorefresh/library/f;->d:[Lcom/handmark/pulltorefresh/library/f;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method static a()Lcom/handmark/pulltorefresh/library/f;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;
return-object v0
.end method
.method static a(I)Lcom/handmark/pulltorefresh/library/f;
.registers 2
packed-switch p0, :pswitch_data_c
sget-object v0, Lcom/handmark/pulltorefresh/library/f;->a:Lcom/handmark/pulltorefresh/library/f;
:goto_5
return-object v0
:pswitch_6
sget-object v0, Lcom/handmark/pulltorefresh/library/f;->b:Lcom/handmark/pulltorefresh/library/f;
goto :goto_5
:pswitch_9
sget-object v0, Lcom/handmark/pulltorefresh/library/f;->c:Lcom/handmark/pulltorefresh/library/f;
goto :goto_5
:pswitch_data_c
.packed-switch 0x1
:pswitch_6
:pswitch_9
.end packed-switch
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/f;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/f;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/f;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/f;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/f;->d:[Lcom/handmark/pulltorefresh/library/f;
invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/f;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/handmark/pulltorefresh/library/f;
return-object v0
.end method
.method  a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.registers 7
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->d:[I
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/f;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1e
new-instance v0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)V
:goto_10
return-object v0
:pswitch_11
new-instance v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)V
goto :goto_10
:pswitch_17
new-instance v0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)V
goto :goto_10
nop
:pswitch_data_1e
.packed-switch 0x2
:pswitch_11
:pswitch_17
.end packed-switch
.end method