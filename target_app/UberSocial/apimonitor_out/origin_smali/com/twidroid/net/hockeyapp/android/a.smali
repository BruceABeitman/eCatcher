.class public Lcom/twidroid/net/hockeyapp/android/a;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/Boolean;

.field private e:Lcom/twidroid/net/hockeyapp/android/q;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->d:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    iput-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/k;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->d:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    iput-object p3, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/k;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/q;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->d:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    iput-object p3, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/k;->a(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_48
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2d} :catch_2e

    goto :goto_11

    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_48

    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_43

    :goto_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_35

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    :goto_4c
    throw v0

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c
.end method

.method static synthetic a(Lcom/twidroid/net/hockeyapp/android/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/hockeyapp/android/a;Lorg/json/JSONArray;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/a;->c(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/hockeyapp/android/a;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
    .registers 6

    const-class v0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/q;->a()Ljava/lang/Class;

    move-result-object v0

    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "json"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "url"

    const-string v2, "apk"

    invoke-virtual {p0, v2}, Lcom/twidroid/net/hockeyapp/android/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3a
    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/a;->j()V

    return-void
.end method

.method private a(Lorg/json/JSONArray;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, p2, :cond_2a

    const-string v1, "mandatory"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "mandatory"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->d:Ljava/lang/Boolean;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_28} :catch_2d

    :cond_28
    const/4 v0, 0x1

    :cond_29
    :goto_29
    return v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_2d
    move-exception v1

    goto :goto_29
.end method

.method static synthetic b(Lcom/twidroid/net/hockeyapp/android/a;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Lorg/json/JSONArray;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/hockeyapp/android/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/net/hockeyapp/android/a$1;

    invoke-direct {v2, p0}, Lcom/twidroid/net/hockeyapp/android/a$1;-><init>(Lcom/twidroid/net/hockeyapp/android/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/net/hockeyapp/android/a$2;

    invoke-direct {v2, p0, p1}, Lcom/twidroid/net/hockeyapp/android/a$2;-><init>(Lcom/twidroid/net/hockeyapp/android/a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1c

    :cond_6a
    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_1c
.end method

.method private c(Lorg/json/JSONArray;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v0, 0x1001

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "hockey_update_dialog"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_22
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-class v0, Lcom/twidroid/net/hockeyapp/android/m;

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    if-eqz v2, :cond_31

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/q;->b()Ljava/lang/Class;

    move-result-object v0

    :cond_31
    :try_start_31
    const-string v2, "newInstance"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/json/JSONArray;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "apk"

    invoke-virtual {p0, v5}, Lcom/twidroid/net/hockeyapp/android/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    const-string v2, "hockey_update_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string v1, "HockeyApp"

    const-string v2, "An exception happened while showing the update fragment:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "HockeyApp"

    const-string v1, "Showing update activity instead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_5f
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/a;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "api/2/apps/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->b:Ljava/lang/String;

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&udid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    const-string v0, "&os=Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&os_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/twidroid/net/hockeyapp/android/b;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/twidroid/net/hockeyapp/android/b;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&oem="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/twidroid/net/hockeyapp/android/b;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&app_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/twidroid/net/hockeyapp/android/b;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sdk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "HockeySDK"

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sdk_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2.1.0"

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&usage_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12c
    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15
.end method

.method protected varargs a([Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/a;->d()I

    move-result v1

    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/twidroid/net/hockeyapp/android/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, v0, v1}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lorg/json/JSONArray;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/net/URL;

    const-string v2, "json"

    invoke-virtual {p0, v2}, Lcom/twidroid/net/hockeyapp/android/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v2, "User-Agent"

    const-string v3, "Hockey/Android"

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/twidroid/net/hockeyapp/android/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lorg/json/JSONArray;I)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_59

    move-result v1

    if-nez v1, :cond_1b

    :goto_57
    const/4 v0, 0x0

    goto :goto_1b

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/twidroid/net/hockeyapp/android/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected a(Lorg/json/JSONArray;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/q;->d()V

    :cond_b
    invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/a;->b(Lorg/json/JSONArray;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->e:Lcom/twidroid/net/hockeyapp/android/q;

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/q;->c()V

    goto :goto_e
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    return-void
.end method

.method protected d()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/a;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
