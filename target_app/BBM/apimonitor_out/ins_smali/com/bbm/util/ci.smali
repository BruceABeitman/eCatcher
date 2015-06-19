.class public final Lcom/bbm/util/ci;
.super Ljava/lang/Object;
.source "ListUtils.java"
.field public a:Ljava/util/Collection;
.field public b:Ljava/util/Collection;
.field public c:Ljava/util/Collection;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/util/ci;->a:Ljava/util/Collection;
iput-object p1, p0, Lcom/bbm/util/ci;->b:Ljava/util/Collection;
iput-object p2, p0, Lcom/bbm/util/ci;->c:Ljava/util/Collection;
return-void
.end method