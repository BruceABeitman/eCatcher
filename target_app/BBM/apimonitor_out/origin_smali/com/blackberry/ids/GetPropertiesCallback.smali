.class Lcom/blackberry/ids/GetPropertiesCallback;
.super Lcom/blackberry/ids/JniCallback;
.source "GetPropertiesCallback.java"

# interfaces
.implements Lcom/blackberry/ids/IGetPropertiesCallback;


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blackberry/ids/JniCallback;-><init>(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/blackberry/ids/GetPropertiesCallback;JJI[Lcom/blackberry/ids/Property;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/blackberry/ids/GetPropertiesCallback;->call(JJI[Lcom/blackberry/ids/Property;)V

    return-void
.end method

.method private native call(JJI[Lcom/blackberry/ids/Property;)V
.end method


# virtual methods
.method public call(I[Lcom/blackberry/ids/Property;)V
    .registers 4

    new-instance v0, Lcom/blackberry/ids/GetPropertiesCallback$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/blackberry/ids/GetPropertiesCallback$1;-><init>(Lcom/blackberry/ids/GetPropertiesCallback;I[Lcom/blackberry/ids/Property;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
