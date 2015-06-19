.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"
.field public static final enum BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field public static final enum DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field private static final synthetic ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field public static final enum MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field public static PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field public static final enum PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field public static final enum PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field public static PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.field private mIntValue:I
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const-string/jumbo v1, "DISABLED"
invoke-direct {v0, v1, v2, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const-string/jumbo v1, "PULL_FROM_START"
invoke-direct {v0, v1, v3, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const-string/jumbo v1, "PULL_FROM_END"
invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const-string/jumbo v1, "BOTH"
invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const-string/jumbo v1, "MANUAL_REFRESH_ONLY"
invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
const/4 v0, 0x5
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aput-object v1, v0, v2
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aput-object v1, v0, v3
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aput-object v1, v0, v4
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aput-object v1, v0, v5
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
aput-object v1, v0, v6
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mIntValue:I
return-void
.end method
.method static getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.registers 1
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return-object v0
.end method
.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.registers 6
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v2
array-length v3, v2
const/4 v1, 0x0
:goto_6
if-lt v1, v3, :cond_d
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
:cond_c
return-object v0
:cond_d
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I
move-result v4
if-eq p0, v4, :cond_c
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
array-length v1, v0
new-array v2, v1, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method
.method  getIntValue()I
.registers 2
iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mIntValue:I
return v0
.end method
.method  permitsPullToRefresh()Z
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p0, v0, :cond_8
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-ne p0, v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method
.method public showFooterLoadingLayout()Z
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p0, v0, :cond_e
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p0, v0, :cond_e
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p0, v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method public showHeaderLoadingLayout()Z
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p0, v0, :cond_a
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if-eq p0, v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method