.class public final Lcom/instagram/base/activity/tabactivity/h;
.super Ljava/lang/Object;
.source "IgTabHost.java"
.field final synthetic a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
.field private b:Ljava/lang/String;
.field private c:Lcom/instagram/base/activity/tabactivity/e;
.field private d:Lcom/instagram/base/activity/tabactivity/d;
.method private constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/h;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/base/activity/tabactivity/h;->b:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/base/activity/tabactivity/h;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/e;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/h;->c:Lcom/instagram/base/activity/tabactivity/e;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/base/activity/tabactivity/h;)Lcom/instagram/base/activity/tabactivity/d;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/h;->d:Lcom/instagram/base/activity/tabactivity/d;
return-object v0
.end method
.method public final a(Landroid/content/Intent;)Lcom/instagram/base/activity/tabactivity/h;
.registers 6
new-instance v0, Lcom/instagram/base/activity/tabactivity/f;
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/h;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
iget-object v2, p0, Lcom/instagram/base/activity/tabactivity/h;->b:Ljava/lang/String;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, p1, v3}, Lcom/instagram/base/activity/tabactivity/f;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;Landroid/content/Intent;B)V
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/h;->d:Lcom/instagram/base/activity/tabactivity/d;
return-object p0
.end method
.method public final a(Landroid/view/View;)Lcom/instagram/base/activity/tabactivity/h;
.registers 5
new-instance v0, Lcom/instagram/base/activity/tabactivity/i;
iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/h;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
const/4 v2, 0x0
invoke-direct {v0, v1, p1, v2}, Lcom/instagram/base/activity/tabactivity/i;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Landroid/view/View;B)V
iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/h;->c:Lcom/instagram/base/activity/tabactivity/e;
return-object p0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/h;->b:Ljava/lang/String;
return-object v0
.end method