.class public final Lcom/bbm/b/s;
.super Ljava/lang/Object;
.source "AdsModel.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/content/ContentResolver;

.field final c:Landroid/telephony/TelephonyManager;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/webkit/WebSettings;

.field f:Lcom/bbm/b/u;

.field final synthetic g:Lcom/bbm/b/q;

.field private final h:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Lcom/bbm/b/q;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/telephony/TelephonyManager;)V
    .registers 8

    iput-object p1, p0, Lcom/bbm/b/s;->g:Lcom/bbm/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbm/b/s;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bbm/b/s;->b:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/b/s;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/bbm/b/t;

    invoke-direct {v0, p0, p1}, Lcom/bbm/b/t;-><init>(Lcom/bbm/b/s;Lcom/bbm/b/q;)V

    iput-object v0, p0, Lcom/bbm/b/s;->h:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/bbm/b/s;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/bbm/b/s;->h:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bbm/b/s;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/b/s;->e:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Lcom/bbm/b/s;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/b/s;->f:Lcom/bbm/b/u;

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/bbm/b/s;->f:Lcom/bbm/b/u;

    if-nez v0, :cond_5

    new-instance v0, Lcom/bbm/b/u;

    invoke-direct {v0, p0, v1}, Lcom/bbm/b/u;-><init>(Lcom/bbm/b/s;B)V

    iput-object v0, p0, Lcom/bbm/b/s;->f:Lcom/bbm/b/u;

    iget-object v0, p0, Lcom/bbm/b/s;->f:Lcom/bbm/b/u;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bbm/b/u;->c([Ljava/lang/Object;)Lcom/bbm/util/b;

    goto :goto_5
.end method
