.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle:[I
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
.field private static final synthetic ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.field public static final enum FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.field public static final enum ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23
:goto_15
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21
:goto_1e
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle:[I
goto :goto_4
:catch_21
move-exception v1
goto :goto_1e
:catch_23
move-exception v1
goto :goto_15
.end method
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42
:try_start_1e
:goto_1e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40
:goto_27
:try_start_27
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
goto :goto_4
:catch_3c
move-exception v1
goto :goto_39
:catch_3e
move-exception v1
goto :goto_30
:catch_40
move-exception v1
goto :goto_27
:catch_42
move-exception v1
goto :goto_1e
:catch_44
move-exception v1
goto :goto_15
.end method
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
const-string/jumbo v1, "ROTATE"
invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
const-string/jumbo v1, "FLIP"
invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
const/4 v0, 0x2
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aput-object v1, v0, v2
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
aput-object v1, v0, v3
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method static getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
return-object v0
.end method
.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.registers 2
packed-switch p0, :pswitch_data_a
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
:goto_5
return-object v0
:pswitch_6
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
goto :goto_5
nop
:pswitch_data_a
.packed-switch 0x1
:pswitch_6
.end packed-switch
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
array-length v1, v0
new-array v2, v1, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method
.method  createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.registers 7
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$AnimationStyle()[I
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2c
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v0
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_32
new-instance v0, Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
:goto_1f
return-object v0
:pswitch_20
new-instance v0, Lcom/handmark/pulltorefresh/library/internal/FooterRotateLoadingLayout;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/FooterRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
goto :goto_1f
:pswitch_26
new-instance v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
goto :goto_1f
:pswitch_data_2c
.packed-switch 0x2
:pswitch_26
.end packed-switch
:pswitch_data_32
.packed-switch 0x3
:pswitch_20
.end packed-switch
.end method