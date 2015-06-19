.class final Lcom/instagram/f/d/b;
.super Ljava/lang/Object;
.source "DirectShareRecipientsStore.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/instagram/f/d/a;
.method constructor <init>(Lcom/instagram/f/d/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/f/d/b;->a:Lcom/instagram/f/d/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/a;)I
.registers 4
invoke-virtual {p0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/instagram/user/c/a;
check-cast p2, Lcom/instagram/user/c/a;
invoke-static {p1, p2}, Lcom/instagram/f/d/b;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/a;)I
move-result v0
return v0
.end method