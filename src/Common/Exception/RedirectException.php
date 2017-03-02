<?php

namespace Common\Exception;

use Symfony\Component\HttpFoundation\Response;

/**
 * This exception will be used to bubble up exceptions to the kernel
 */
class RedirectException extends \Exception
{
    /**
     * @var Response
     */
    protected $response;

    /**
     * {@inheritdoc}
     */
    public function __construct($message, Response $response, \Exception $previous = null)
    {
        $this->response = $response;
        $code = $response->getStatusCode();
        parent::__construct($message, $code, $previous);
    }

    /**
     * Get the associated response
     *
     * @return Response
     */
    public function getResponse(): Response
    {
        return $this->response;
    }
}
