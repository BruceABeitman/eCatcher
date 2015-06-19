.class public interface abstract Lcom/ibm/icu/impl/ICUCache;
.super Ljava/lang/Object;
.source "ICUCache.java"


# static fields
.field public static final NULL:Ljava/lang/Object; = null

.field public static final SOFT:I = 0x0

.field public static final WEAK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUCache;->NULL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
