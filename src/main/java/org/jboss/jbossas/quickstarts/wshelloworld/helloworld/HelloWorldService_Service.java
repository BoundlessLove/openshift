
package org.jboss.jbossas.quickstarts.wshelloworld.helloworld;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "HelloWorldService", targetNamespace = "http://www.jboss.org/jbossas/quickstarts/wshelloworld/HelloWorld", wsdlLocation = "http://helloworldws-jaysarnawbcalndr.rhcloud.com/jboss-helloworld-ws/HelloWorldService?wsdl")
public class HelloWorldService_Service
    extends Service
{

    private final static URL HELLOWORLDSERVICE_WSDL_LOCATION;
    private final static WebServiceException HELLOWORLDSERVICE_EXCEPTION;
    private final static QName HELLOWORLDSERVICE_QNAME = new QName("http://www.jboss.org/jbossas/quickstarts/wshelloworld/HelloWorld", "HelloWorldService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://helloworldws-jaysarnawbcalndr.rhcloud.com/jboss-helloworld-ws/HelloWorldService?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        HELLOWORLDSERVICE_WSDL_LOCATION = url;
        HELLOWORLDSERVICE_EXCEPTION = e;
    }

    public HelloWorldService_Service() {
        super(__getWsdlLocation(), HELLOWORLDSERVICE_QNAME);
    }

    public HelloWorldService_Service(WebServiceFeature... features) {
        super(__getWsdlLocation(), HELLOWORLDSERVICE_QNAME, features);
    }

    public HelloWorldService_Service(URL wsdlLocation) {
        super(wsdlLocation, HELLOWORLDSERVICE_QNAME);
    }

    public HelloWorldService_Service(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, HELLOWORLDSERVICE_QNAME, features);
    }

    public HelloWorldService_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public HelloWorldService_Service(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns HelloWorldService
     */
    @WebEndpoint(name = "HelloWorld")
    public HelloWorldService getHelloWorld() {
        return super.getPort(new QName("http://www.jboss.org/jbossas/quickstarts/wshelloworld/HelloWorld", "HelloWorld"), HelloWorldService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns HelloWorldService
     */
    @WebEndpoint(name = "HelloWorld")
    public HelloWorldService getHelloWorld(WebServiceFeature... features) {
        return super.getPort(new QName("http://www.jboss.org/jbossas/quickstarts/wshelloworld/HelloWorld", "HelloWorld"), HelloWorldService.class, features);
    }

    private static URL __getWsdlLocation() {
        if (HELLOWORLDSERVICE_EXCEPTION!= null) {
            throw HELLOWORLDSERVICE_EXCEPTION;
        }
        return HELLOWORLDSERVICE_WSDL_LOCATION;
    }

}
