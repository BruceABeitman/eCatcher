.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"
.field private static final synthetic ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field public static final enum MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field public static final enum OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field public static final enum PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field public static final enum REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field public static final enum RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field public static final enum RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.field private mIntValue:I
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v1, "RESET"
invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v1, "PULL_TO_REFRESH"
invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v1, "RELEASE_TO_REFRESH"
invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v1, "REFRESHING"
const/16 v2, 0x8
invoke-direct {v0, v1, v7, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v1, "MANUAL_REFRESHING"
const/16 v2, 0x9
invoke-direct {v0, v1, v8, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const-string/jumbo v1, "OVERSCROLLING"
const/4 v2, 0x5
const/16 v3, 0x10
invoke-direct {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
const/4 v0, 0x6
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aput-object v1, v0, v4
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aput-object v1, v0, v5
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aput-object v1, v0, v6
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aput-object v1, v0, v7
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
aput-object v2, v0, v1
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mIntValue:I
return-void
.end method
.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.registers 6
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
move-result-object v2
array-length v3, v2
const/4 v1, 0x0
:goto_6
if-lt v1, v3, :cond_b
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
:cond_a
return-object v0
:cond_b
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I
move-result v4
if-eq p0, v4, :cond_a
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
array-length v1, v0
new-array v2, v1, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method
.method  getIntValue()I
.registers 2
iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mIntValue:I
return v0
.end method