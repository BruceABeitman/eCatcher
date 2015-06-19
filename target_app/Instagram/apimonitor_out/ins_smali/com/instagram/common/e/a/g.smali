.class public final Lcom/instagram/common/e/a/g;
.super Ljava/lang/Object;
.source "MediaUri.java"
.field public static final a:Lcom/instagram/common/e/a/i;
.field public final b:Ljava/lang/String;
.field public final c:Ljava/lang/String;
.field public final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/common/e/a/h;
invoke-direct {v0}, Lcom/instagram/common/e/a/h;-><init>()V
sput-object v0, Lcom/instagram/common/e/a/g;->a:Lcom/instagram/common/e/a/i;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/e/a/g;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/common/e/a/g;->c:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/common/e/a/g;->d:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/common/e/a/g;->e:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/a/g;->e:Ljava/lang/String;
return-object v0
.end method