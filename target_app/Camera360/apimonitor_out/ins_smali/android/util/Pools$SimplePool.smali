.class public Landroid/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"
.implements Landroid/util/Pools$Pool;
.field private final mPool:[Ljava/lang/Object;
.field private mPoolSize:I
.method public constructor <init>(I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gtz p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "The max pool size must be > 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
new-array v0, p1, [Ljava/lang/Object;
iput-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;
return-void
.end method
.method private isInPool(Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x0
:goto_1
iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
if-lt v0, v1, :cond_7
const/4 v1, 0x0
:goto_6
return v1
:cond_7
iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;
aget-object v1, v1, v0
if-ne v1, p1, :cond_f
const/4 v1, 0x1
goto :goto_6
:cond_f
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public acquire()Ljava/lang/Object;
.registers 5
const/4 v2, 0x0
iget v3, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
if-lez v3, :cond_18
iget v3, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
add-int/lit8 v1, v3, -0x1
iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;
aget-object v0, v3, v1
iget-object v3, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;
aput-object v2, v3, v1
iget v2, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
:goto_17
return-object v0
:cond_18
move-object v0, v2
goto :goto_17
.end method
.method public release(Ljava/lang/Object;)Z
.registers 4
invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Already in the pool!"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
iget-object v1, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;
array-length v1, v1
if-ge v0, v1, :cond_24
iget-object v0, p0, Landroid/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;
iget v1, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
aput-object p1, v0, v1
iget v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/util/Pools$SimplePool;->mPoolSize:I
const/4 v0, 0x1
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method